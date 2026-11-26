cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4839"
  sha256 arm:   "b3acf6fbfe3e1149eb1171a3fa120c8a8c33b670c710b1b3e2d8af1b84ea48f8",
         intel: "c27da8bcb35fd4a48bc649fa11c4b2119c497752df5fe1cc492f168a77718a32"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
