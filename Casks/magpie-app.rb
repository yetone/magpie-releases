cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4434"
  sha256 arm:   "b5852f851d37a0551553e73893f5df15232c0bf3f379623f3bb0fea8ac6f0389",
         intel: "68643299dbda75abb97321cf7f19a07cee01beca9d4583e1af2a65845fc3cacc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
