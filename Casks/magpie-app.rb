cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3274"
  sha256 arm:   "8ee1baa9ca4c469d4081d8f907e777d2f51219cc5a5711270143356a3ef85abb",
         intel: "b4e83534819c252c0d1e1e1063df9d4fd4cc303c0141a783d09fd381109a36d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
