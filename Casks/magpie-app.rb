cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.983"
  sha256 arm:   "bb1205ea6aab8e2ce86c47c5c20e6edc592dccba43062209ca563bf6d0da7d91",
         intel: "19989fcd8823e7cb0a5cb84c126f9c77d293459bac113c9890f7e01298c0688b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
