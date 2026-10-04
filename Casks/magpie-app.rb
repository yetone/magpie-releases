cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.914"
  sha256 arm:   "ce773bfec73785c45abb18453b1d63bf6b0ae1cfd0fe72c784e88fd772f6e66d",
         intel: "ded05a87fe2725e3573445c61fd35cf3cd6a679cfb24cb8255b75fc96ac50631"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
