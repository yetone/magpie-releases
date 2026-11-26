cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4851"
  sha256 arm:   "d19334f687f4ac04119672ea4445357ef1f3a765d2a7db59e618a364f5181c39",
         intel: "b6df6326543033269f37b15311d45125e5d8787a9a06fb1d2301f385402597c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
