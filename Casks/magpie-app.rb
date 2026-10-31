cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2341"
  sha256 arm:   "38937b965624eb22263748081e62a488fec7750c167e0a0b003436a886bc4933",
         intel: "5767f7a3e09c83508014646e1b53e0808c294f5fd96cfc9174e6bb99ea8afca8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
