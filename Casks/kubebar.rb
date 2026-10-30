cask "kubebar" do
  # version and sha256 are updated by KubeBar's release workflow.
  version "1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/svclimb/KubeBar/releases/download/v#{version}/KubeBar-#{version}.zip"
  name "KubeBar"
  desc "Menu bar launcher for kubectl, stern and other Kubernetes CLI commands"
  homepage "https://github.com/svclimb/KubeBar"

  depends_on macos: :sonoma

  app "KubeBar.app"

  # The app is ad-hoc signed, not notarized: without this Gatekeeper refuses
  # to open it on first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/KubeBar.app"]
  end

  uninstall quit: "com.svclimb.kubebar"

  zap trash: [
    "~/Library/Application Support/KubeBar",
    "~/Library/Preferences/com.svclimb.kubebar.plist",
  ]
end
