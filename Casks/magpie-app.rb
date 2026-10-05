cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1012"
  sha256 arm:   "27bde5a158d26886f595a0ecf4724410427c007e9e71569c127a7c08d0aef876",
         intel: "158bddd8f4e6d9aff95e899ca22dfba6d5b5b28acdb209e1fd2af6f2143006a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
