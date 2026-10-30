cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2217"
  sha256 arm:   "d2d8c0eed279fe26bdd9123ff11bb694381dbaa2581d9bb8d683c3da38f1822d",
         intel: "f792db8a94fba6880166f298b6e43b56b4814813871de256d4292381958a95fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
