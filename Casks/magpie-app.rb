cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2391"
  sha256 arm:   "132762e215612a6c567c6a7b56afde933f4b3b1dcb860ee5604eba7f21a39950",
         intel: "d62d2f7ee319e2194c9ee68fb9c67aefe67c378d01a6e97d644abe60c45277c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
