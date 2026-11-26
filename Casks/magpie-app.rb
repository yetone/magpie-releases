cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4836"
  sha256 arm:   "83128c854e3fd304a69bb57858a8ba6d82f958c8f800d664ba9b804d7fa4891d",
         intel: "36b65ef63a8cbfa1d22164201a6894a6bec204eb091a8f31f0746c71bc6b588c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
