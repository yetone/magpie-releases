cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3033"
  sha256 arm:   "c836c9ca81b00a29560985076112185b752e90a4179f318181c800b1ced1f62c",
         intel: "d7d612848e00e0369ab9a6b98d73feb002e3341e9718032bbf84dd5157582e22"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
