cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2028"
  sha256 arm:   "4c4254ad5702995b663cd4226bb015eadcf19dec02758165fab0a11af960581d",
         intel: "784a1b22c976f52718c514d533e96642508d232def68641907258b0b17e16c9e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
