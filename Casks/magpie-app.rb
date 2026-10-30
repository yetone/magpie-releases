cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2191"
  sha256 arm:   "d4648b4d267db10b3ddcaa9842ac8b6b90d30089847532398260b72ec52b945d",
         intel: "38093f73094d48579467361487118880ec014f789c8fb93e4e4c236e001ea9fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
