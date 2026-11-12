cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3883"
  sha256 arm:   "08d44a49c01f4084164a7a3ce8fedacae450070b19aebffd5658808ec40df0af",
         intel: "c4bf534aa221e2d5e297d27fd8b6e60ec99eb028c5a950a9622738f24124d336"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
