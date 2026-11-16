cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4318"
  sha256 arm:   "5516e4736c60bce99eb842ef445d820be580263665eba637519b4c1e51a9c471",
         intel: "87f0fc2ac1fae594ee9836bdc00abfee1cf565b10fc4d503252a2bc494fdc692"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
