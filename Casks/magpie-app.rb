cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2854"
  sha256 arm:   "645cd67b6d6be06af19e05e59bcef6e93371ca9b1f58995f324580e35bfbe7b0",
         intel: "8f7f264704e1d28bac4d57f108049aeab16e06187650cb212aa1d47caf4f1ef2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
