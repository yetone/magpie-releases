cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3076"
  sha256 arm:   "80550affcc892a1b502eb1f2cf79edd9129aa621590cb642262de38d487e5d3f",
         intel: "9073ae6eebe6aa08fae1b72985f55acc80b8efebe8984a9464f71ce72761c31f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
