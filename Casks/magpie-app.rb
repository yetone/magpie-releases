cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3793"
  sha256 arm:   "088e487378cf20fdb6e46262dc2b7d2a9e535cd6f432af585bdb6227799cd21d",
         intel: "0b1c96ccfa50fa2985ce7e20b7181efd7183ed52b84342f26d66a139cfecd08b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
