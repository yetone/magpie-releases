cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4249"
  sha256 arm:   "cbf6b28d7422fed240d1232ce60c1b2532dfc17762c870abe28e87e80e2a4a50",
         intel: "ecacd3ddf75d9a63c5407ee62a46fb6920ea354f599c543d2031528851303a1c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
