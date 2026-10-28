cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1870"
  sha256 arm:   "8c750a7a61c32eec80f8fb03b8465c333de5f0b78ca4f316eb890cf576d5c169",
         intel: "c582833a844de3346a5f01f25f65b498ab499d9889f35d8653ecc0320224570e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
