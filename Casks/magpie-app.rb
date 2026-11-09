cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3469"
  sha256 arm:   "1351b533dd5a92c22ae09def87e2bdeca282820da333651ae9e75a91a7a8b840",
         intel: "41aafb5dc90bfd212b0f7e516d665b7fbe93f4918eef0aff3238c16c31ffd9d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
