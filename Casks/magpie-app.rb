cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3845"
  sha256 arm:   "1d1325f2f4b4118a66155cee9d383e518717fd9b80eaba442944fa8887765484",
         intel: "135daa67703e6852944e05aa3b9bee94d2cf9417e9baf72ee1c38d6c75e0ef7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
