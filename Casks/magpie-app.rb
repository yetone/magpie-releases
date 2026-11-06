cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3198"
  sha256 arm:   "cfeed4a03fee3eded90e516e7c7f74c22611f5a5d8213b6eff2b7bebfd7f5e40",
         intel: "6779b526947b8b974886e85f5c59e24ca429a42e5ab93cb0d2383f741277686c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
