cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4298"
  sha256 arm:   "f11ad81aaf9782044fd4b0514acfcfff123d88b3f4625a7f6f32dc1fa65cd2bc",
         intel: "095ab1e7d0780d77f098f247b4a2685725a885b27376043851eecc2bddf3a24c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
