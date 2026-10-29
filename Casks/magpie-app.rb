cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2012"
  sha256 arm:   "21dce9f37b3a36f7bfbf2337b9112994a645a0ccbf0ad941da52c94d361f9049",
         intel: "dd304d9e2b1be97a413de56b3f07b3e3c2acad1f51286b1361c8f127c0f5d8a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
