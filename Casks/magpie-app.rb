cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4669"
  sha256 arm:   "211e04f013e426fde0bddd4dcc944454f92ab170d5d40897e295eda17ebfcaca",
         intel: "a0c2d2242ccd4ad39ace56586020fe4ef5b56a6b96c28888435a50fa70b77a7a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
