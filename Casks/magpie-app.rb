cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3795"
  sha256 arm:   "d01ade8af79c3765da820c7eb318143c734ef785c56f06982083ef0181127187",
         intel: "151393292bb97a308013a5f52a46c6f3ae7749d52d697e31ecd9fa5511d091d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
