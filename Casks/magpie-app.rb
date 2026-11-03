cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2807"
  sha256 arm:   "5850ba1674904e585962f992d07be9fcc83a89d2136063d04f8041f633849648",
         intel: "42c8c6b93ac7f17fc85d908d13f92ded8b2be745d0c2c5315ab4918471c06de7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
