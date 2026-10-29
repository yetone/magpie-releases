cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2076"
  sha256 arm:   "a7bcc50d96a098592558141156af45ae4528cbe810a57674622930fcaa6cf155",
         intel: "01722d2ce1bd4fdd396856e37c1880f6b47b5ff41bc3842373e796d6052c170a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
