cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3557"
  sha256 arm:   "180f7a387f10f9f757a224c8f70fec5cb92515816d12427bae9efa5fb93b14b3",
         intel: "0695aca3bdaba97b8c55435dee1686773a8828e8ca28ba01f9fa36fcb26be948"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
