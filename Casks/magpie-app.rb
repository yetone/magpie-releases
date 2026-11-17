cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4383"
  sha256 arm:   "308a9ce17c1ab59aa809598bc81b8e3e51127785d7d4d6fa783a114db27aed81",
         intel: "092658b25602ec229a8836cc298c215ceadaaa72f6388ac0656814c0c009176f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
