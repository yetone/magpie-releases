cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4275"
  sha256 arm:   "9cdbf7faff0b0641b33cf0040bd07f1d9675b28e0d2fbef0639e35525caaca55",
         intel: "6ae243ab69963d74b156001fda4adeacc1733abdb9abfa3224128857f0e7261b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
