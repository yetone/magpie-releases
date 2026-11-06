cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3112"
  sha256 arm:   "1386c1112e3b54472f85013e31cdcd9c50622c5c3acf005dea1c58f4cc7dc913",
         intel: "656fcf91b4b6e6ef33407de69a4d8dbc24ba6f0166123dc55005f4d8ed7095f0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
