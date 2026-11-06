cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3142"
  sha256 arm:   "5832ca6df116971158434c2d87abfbe0e0bf2f1e785e2d48ce4990c0f7b64cc7",
         intel: "f6e9047a741ee4082fac45faa820006c5c86592d104aba67b2d85c3ce40ee7f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
