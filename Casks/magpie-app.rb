cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4687"
  sha256 arm:   "2f6a6d3c81ae500f189639ee0f410d03ccc881e144ae9a58ab66a63402d12e3b",
         intel: "67e49a4d73277ced3a77280399b47a4e3d20e2141343282622d709b4109e47c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
