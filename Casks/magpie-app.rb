cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2732"
  sha256 arm:   "c96b88f4e20fd6d48d89d6a7fe6761aa8ecd51e2dd20b282a5166804d6f1703c",
         intel: "ac531752a7d1b0496946ff52c5ac17487c0dfb8341584102f1eee66134405eb3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
