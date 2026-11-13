cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4087"
  sha256 arm:   "0b80ad2ed0a930fed5729f51d6f9fc9db2263afff50b4acdd14bc8fd8562814c",
         intel: "c70078948f3ddb23ef4df2dfed32e1c245c2e065bea32183dcf23fbb261cfa57"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
