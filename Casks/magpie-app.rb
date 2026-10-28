cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1954"
  sha256 arm:   "8ae64c80370861a94b21188a213215a1653f44ab74676700decba9e2d17240d3",
         intel: "09761a2f6c6fe4c014026bbe0a025ae1f8576443550b3addac7eade96fd362c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
