cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2390"
  sha256 arm:   "75d71e79a1ff24bec6032a3736333a5f4eba45372d6324a723db67659709e415",
         intel: "a88d75f59fb4e83ecfa661d09bb82de5d25508d9d1a88ba6baaf47aacbd84644"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
