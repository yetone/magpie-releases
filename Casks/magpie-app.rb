cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4408"
  sha256 arm:   "13356babb89c17ded39992ee830197918de776c1bfa458e06c5171bfad75a0d2",
         intel: "6210d04452e4e7126b5237458bbc5b2858b465bc1acca6f414a420882d8b71bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
