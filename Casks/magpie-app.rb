cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4096"
  sha256 arm:   "1f94ea6de07e31d38ad0f95f0af0068100b1e30942d245cac5f1e2a180eb9cf7",
         intel: "e65ffa84d6ff35dad41a5bcc49231cb3547d7cce3c541a03bb88dd071b4d5323"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
