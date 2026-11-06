cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3154"
  sha256 arm:   "d6fcb54017dfffe05add03fe7c7cd006477e1c7522378556f14b56e5429aa84a",
         intel: "68c9f09b1bd79a7646c2b94d1deba0a43609f0e21e88bf5aabdaddc7fb46280c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
