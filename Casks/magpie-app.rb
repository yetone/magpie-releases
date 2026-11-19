cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4530"
  sha256 arm:   "c785f21ab7374b01e1e47d5152e20e041e5e82419a0cba44dfd17557f252dfa0",
         intel: "bd19a55be7d680dda1682689dd4d8538cfa5e3c88cb993f6f99b4f8ab2e8625f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
