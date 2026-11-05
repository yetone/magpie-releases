cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3013"
  sha256 arm:   "7a3dce0bdae41398117b8b42d92930eb56b6192a1af72ece53259fad5c67aa15",
         intel: "222b65c37d991d7d34b291b35d81f2d7a04cf29525533968bc29b1901a6bc0e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
