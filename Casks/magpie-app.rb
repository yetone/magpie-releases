cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3556"
  sha256 arm:   "8b432d5c7e0f3628e3941374ee3592c0d4cfc79cf5fc5d3629a6622035de254a",
         intel: "7743e20aa00602aaf7d5fe4fb35cd1479f86cb7970f1b455e70a016462fa1b01"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
