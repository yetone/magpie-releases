cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3933"
  sha256 arm:   "d197d646ae7f8eaecadeea5f77521419ab4eb935ec6d757f358baabd670addfb",
         intel: "f763a27a8669aff688b99798e24aad6195b78202ddffa4f39f3cac8fca518b18"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
