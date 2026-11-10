cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3533"
  sha256 arm:   "339f456f44dfbdab7a6b1d6e5651d7c5729bb6cffe5610cff21f1ddc9471d30f",
         intel: "595352c6ce4687bd033873c77d48a20860dca7c04a621c24adbfc36ec323af17"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
