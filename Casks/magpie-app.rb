cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4548"
  sha256 arm:   "237d420eaacf0b474b79c735a4629d499a7be6f7ad1297a199d740493628bba1",
         intel: "f4653a734e3679491b3d8c79dcb738ab0b7695c01894d9a93bc3e84437f420ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
