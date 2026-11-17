cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4396"
  sha256 arm:   "0ed1d71b1d8f26bc6477439b874b1df70bc49489734e023bcc2fad355a683487",
         intel: "7a9f82e342dc356eb6b25e7b1790de1a22c2562821333913bf767194c078009f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
