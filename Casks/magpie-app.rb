cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3099"
  sha256 arm:   "2f9c5cff1ada95fe0ea4d23b97d176163be2fbf514dd83ece29ab83b80b8f516",
         intel: "dbc1f8c1ac11dbdbbcbf5924d840b4a6db8a66098024a614f683480f07699cc8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
