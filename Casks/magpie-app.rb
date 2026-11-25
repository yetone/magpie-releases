cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4820"
  sha256 arm:   "a1f6c9c8afe91d51d398666ead1003954968eb26308cd3e8cfee6692a1ab257b",
         intel: "b08246f06d9372f2262c20ec02ca452059e86eeffe1262acc2e3f0e000f53adf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
