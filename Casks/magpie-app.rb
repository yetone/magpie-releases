cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4475"
  sha256 arm:   "025f8c7e68823bbd1f60872a1725db656aacb10d446e006697541c4f2ab9d52b",
         intel: "5c2c7e0c8df0f5f866ff78187d06844d027016e3af4bb3eb015cf13dae51f796"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
