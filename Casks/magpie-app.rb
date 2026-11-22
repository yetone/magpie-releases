cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4661"
  sha256 arm:   "162f2d0f9aafe32fdd48c6a695604148210ceaac9bb6443521ea4b7d741af9c6",
         intel: "8cb31cc92784bb89c762258272a48e74cfe01d62867f82e31ffaf2339764bc06"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
