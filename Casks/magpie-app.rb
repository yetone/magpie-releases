cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3231"
  sha256 arm:   "e06bbb19c743458f5387508c83e3d760b40c311d61a3100429e24074c64562e8",
         intel: "cd4cca49aa0c43a6028430a87754d86cd85e6336a451c3f33017470d95b592ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
