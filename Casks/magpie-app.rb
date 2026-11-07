cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3249"
  sha256 arm:   "7db0afd28c67381a7e4982bf988e32a4d565d52d56b235d4d81d6a590df5ae43",
         intel: "8c116baf255023f2ea4c6e7f88e6ac8f9c613d26e99328e4214d9c7e833d98e3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
