cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4779"
  sha256 arm:   "deab655313dd266a6e596ff5aee54f6e9d0ac74ecc9a6acb9633113049c82849",
         intel: "cafb8aff9427591622e13088eb2fac440a935f8e957f42eb198dbcd1760fe463"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
