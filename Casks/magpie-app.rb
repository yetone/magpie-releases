cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3538"
  sha256 arm:   "05f31054991feb903fd5d7e72c9cb7bc3b0dd64fa6531ff3c0af1982bbb62411",
         intel: "acf823b8bef71d9db5502f605ac4c0bff04b6cc954b1155afae3e98b107555c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
