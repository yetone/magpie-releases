cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3011"
  sha256 arm:   "2b0adfda7e5d1e5617a33ce3220fe4e467a03d5593691e3ff71f0530c0dd560f",
         intel: "b29f011e6230d3f0979d01aa78d641424cfa017c10a08c3483661251f7339469"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
